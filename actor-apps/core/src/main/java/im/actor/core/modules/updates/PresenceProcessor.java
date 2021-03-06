/*
 * Copyright (C) 2015 Actor LLC. <https://actor.im>
 */

package im.actor.core.modules.updates;

import im.actor.core.modules.AbsModule;
import im.actor.core.modules.ModuleContext;
import im.actor.core.modules.internal.presence.PresenceActor;
import im.actor.runtime.actors.ActorRef;
import im.actor.runtime.annotations.Verified;

@Verified
public class PresenceProcessor extends AbsModule {
    private ActorRef presenceActor;

    @Verified
    public PresenceProcessor(ModuleContext modules) {
        super(modules);
        this.presenceActor = PresenceActor.get(modules);
    }

    @Verified
    public void onUserOnline(int uid, long updateDate) {
        presenceActor.sendOnce(new PresenceActor.UserOnline(uid, updateDate));
    }

    @Verified
    public void onUserOffline(int uid, long updateDate) {
        presenceActor.sendOnce(new PresenceActor.UserOffline(uid, updateDate));
    }

    @Verified
    public void onUserLastSeen(int uid, long date, long updateDate) {
        presenceActor.sendOnce(new PresenceActor.UserLastSeen(uid, date, updateDate));
    }

    @Verified
    public void onGroupOnline(int gid, int count, long updateDate) {
        presenceActor.sendOnce(new PresenceActor.GroupOnline(gid, count, updateDate));
    }
}
