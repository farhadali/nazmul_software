<?php
use Carbon\Carbon;
use App\Models\Branch;

if (! function_exists('convertLocalToUTC')) {
    function convertLocalToUTC($time)
    {
        return Carbon::createFromFormat('Y-m-d H:i:s', $time, 'Europe/Paris')->setTimezone('UTC');
    }
}

if (! function_exists('convertUTCToLocal')) {
    function convertUTCToLocal($time)
    {
        return Carbon::createFromFormat('Y-m-d H:i:s', $time, 'UTC')->setTimezone('Europe/Paris');
    }
}


if (! function_exists('selectedBranch')) {
    function selectedBranch($branch_ids)
    {
        return Branch::whereIn('id',$branch_ids)->select('id','_name')->get();
    }
}