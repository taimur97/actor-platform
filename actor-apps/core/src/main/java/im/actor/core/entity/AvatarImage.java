/*
 * Copyright (C) 2015 Actor LLC. <https://actor.im>
 */

package im.actor.core.entity;


import org.jetbrains.annotations.NotNull;

import java.io.IOException;

import im.actor.core.api.ApiAvatarImage;
import im.actor.core.api.ApiFileLocation;
import im.actor.core.entity.compat.ObsoleteAvatarImage;
import im.actor.runtime.bser.BserValues;
import im.actor.runtime.bser.BserWriter;

public class AvatarImage extends WrapperEntity<ApiAvatarImage> {

    private static final int RECORD_ID = 10;

    private int width;
    private int height;
    @NotNull
    @SuppressWarnings("NullableProblems")
    private FileReference fileReference;

    public AvatarImage(@NotNull ApiAvatarImage wrapped) {
        super(RECORD_ID, wrapped);
    }

    public AvatarImage(@NotNull byte[] data) throws IOException {
        super(RECORD_ID, data);
    }

    public int getWidth() {
        return width;
    }

    public int getHeight() {
        return height;
    }

    @NotNull
    public FileReference getFileReference() {
        return fileReference;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        // Is Wrapper layout
        if (values.getBool(5, false)) {
            // Parse wrapper layout
            super.parse(values);
        } else {
            // Convert old layout
            ObsoleteAvatarImage obsoleteAvatarImage = new ObsoleteAvatarImage(values);

            setWrapped(new ApiAvatarImage(
                    new ApiFileLocation(
                            obsoleteAvatarImage.getFileReference().getFileId(),
                            obsoleteAvatarImage.getFileReference().getAccessHash()),
                    obsoleteAvatarImage.getWidth(),
                    obsoleteAvatarImage.getHeight(),
                    obsoleteAvatarImage.getFileReference().getFileSize()));
        }
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        // Mark as wrapper layout
        writer.writeBool(5, true);
        // Serialize wrapper layout
        super.serialize(writer);
    }

    @Override
    protected void applyWrapped(@NotNull ApiAvatarImage wrapped) {
        this.width = wrapped.getWidth();
        this.height = wrapped.getHeight();
        this.fileReference = new FileReference(wrapped.getFileLocation(),
                "avatar.jpg", wrapped.getFileSize());
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        AvatarImage that = (AvatarImage) o;

        if (height != that.height) return false;
        if (width != that.width) return false;
        if (!fileReference.equals(that.fileReference)) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = width;
        result = 31 * result + height;
        result = 31 * result + fileReference.hashCode();
        return result;
    }

    @Override
    @NotNull
    protected ApiAvatarImage createInstance() {
        return new ApiAvatarImage();
    }
}
