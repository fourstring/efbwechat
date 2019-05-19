import os

from efb_telegram_master import utils
from ehforwarderbot import coordinator

etm = coordinator.master
ews = coordinator.slaves['blueset.wechat']
chats = ews.get_chats()
to_link = [i.chat_uid for i in chats if i.vendor_specific.get('is_mp', False)]
tg_grp_id = os.environ["TG_MP_GROUP_ID"]
for i in to_link:
    etm.db.add_chat_assoc(master_uid=utils.chat_id_to_str(etm.channel_id, tg_grp_id),
                          slave_uid=utils.chat_id_to_str(ews.channel_id, i),
                          multiple_slave=True)
