package im.actor.model.api.updates;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import im.actor.model.droidkit.bser.Bser;
import im.actor.model.droidkit.bser.BserParser;
import im.actor.model.droidkit.bser.BserObject;
import im.actor.model.droidkit.bser.BserValues;
import im.actor.model.droidkit.bser.BserWriter;
import im.actor.model.droidkit.bser.DataInput;
import im.actor.model.droidkit.bser.DataOutput;
import im.actor.model.droidkit.bser.util.SparseArray;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;
import com.google.j2objc.annotations.ObjectiveCName;
import static im.actor.model.droidkit.bser.Utils.*;
import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import java.util.ArrayList;
import im.actor.model.api.*;

public class UpdateGroupAboutChanged extends Update {

    public static final int HEADER = 0xd6;
    public static UpdateGroupAboutChanged fromBytes(byte[] data) throws IOException {
        return Bser.parse(new UpdateGroupAboutChanged(), data);
    }

    private int groupId;
    private String about;

    public UpdateGroupAboutChanged(int groupId, @Nullable String about) {
        this.groupId = groupId;
        this.about = about;
    }

    public UpdateGroupAboutChanged() {

    }

    public int getGroupId() {
        return this.groupId;
    }

    @Nullable
    public String getAbout() {
        return this.about;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.groupId = values.getInt(1);
        this.about = values.optString(2);
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeInt(1, this.groupId);
        if (this.about != null) {
            writer.writeString(2, this.about);
        }
    }

    @Override
    public String toString() {
        String res = "update GroupAboutChanged{";
        res += "groupId=" + this.groupId;
        res += ", about=" + this.about;
        res += "}";
        return res;
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}