BEGIN transaction

update  public.user_player
set is_blocked=false, block_reason='', un_block_time = null, dc_block_level =0
where public.user_player.block_reason = 'midgame_disconnection'

Rollback transaction

commit transaction

____________________________________
