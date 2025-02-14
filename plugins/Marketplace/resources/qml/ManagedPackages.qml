// Copyright (c) 2021 Ultimaker B.V.
// Cura is released under the terms of the LGPLv3 or higher.
import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import UM 1.4 as UM

Packages
{
    pageTitle: catalog.i18nc("@header", "Manage packages")

    bannerVisible: UM.Preferences.getValue("cura/market_place_show_manage_packages_banner");
    bannerIcon: UM.Theme.getIcon("ArrowDoubleCircleRight")
    bannerText: catalog.i18nc("@text", "Manage your Ultimaker Cura plugins and material profiles here. Make sure to keep your plugins up to date and backup your setup regularly.")
    bannerReadMoreUrl: "" // TODO add when support page is ready
    onRemoveBanner: function() {
        UM.Preferences.setValue("cura/market_place_show_manage_packages_banner", false);
        bannerVisible = false;
    }
    searchInBrowserUrl: "https://marketplace.ultimaker.com/app/cura/plugins?utm_source=cura&utm_medium=software&utm_campaign=marketplace-search-plugins-browser"
    packagesManageableInListView: true

    model: manager.LocalPackageList
}
