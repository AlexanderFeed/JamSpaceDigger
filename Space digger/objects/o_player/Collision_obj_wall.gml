var _list = ds_list_create();
var _num = instance_place_list(x, y, all, _list, false);
if _num > 0
    {
    for (var i = 0; i < _num; ++i;)
        {
         y += 120;
        }
    }
ds_list_destroy(_list);