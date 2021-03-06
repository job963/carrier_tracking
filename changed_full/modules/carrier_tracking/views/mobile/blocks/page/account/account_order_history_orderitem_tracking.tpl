[{if $order->getShipmentTrackingUrl()}]
    [{assign var="oCarrier" value=$order->getCarrier()}]

    <li>
        <strong>[{ oxmultilang ident="TRACKING_ID" suffix="COLON" }]</strong>
        <span id="accOrderTrack_[{$order->oxorder__oxordernr->value}]">
            [{$order->getFieldData('oxtrackcode')}]
        </span>
    </li>

    <li>
        <strong>[{oxmultilang ident="TRACKING_FOLLOW" suffix="COLON"}]</strong>
        <span id="accOrderTrack_[{$order->oxorder__oxordernr->value}]">
            <a href="[{$order->getShipmentTrackingUrl()}]" target="_blank">[{ oxmultilang ident="TRACK_SHIPMENT" }]</a>
        </span>
    </li>

    [{if $oCarrier->getFieldData('oxtitle') != ''}]
        <li>
            <strong>[{oxmultilang ident="TRACKING_CARRIER" suffix="COLON"}]</strong>
        <span id="accOrderCarrier_[{$order->oxorder__oxordernr->value}]">
            [{*if $order->getAlternativeShipmentTrackingUrl() == '' && $oCarrier->getIconUrl() != ''*}]
            <a href="[{$order->getShipmentTrackingUrl()}]" target="_blank">
                [{if $oCarrier->getIconUrl() != ''}]
                    <img src="[{$oCarrier->getIconUrl()}]" alt="[{$oCarrier->getFieldData('oxtitle')}]">
                [{else}]
                    [{$oCarrier->getFieldData('oxtitle')}]
                [{/if}]
            </a>
            [{*/if*}]
        </span>
        </li>
    [{/if}]
[{/if}]