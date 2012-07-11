chrome.tabs.onCreated.addListener (tab) =>
    cacheflow tab
chrome.tabs.onUpdated.addListener (tab_id, changes, tab) =>
    cacheflow tab

cacheflow = (tab) =>
    if tab.url.match "^https?://stackoverflow\.com"
        chrome.tabs.update tab.id, {
            "url": "http://webcache.googleusercontent.com/search?q=cache:#{encodeURI(tab.url)}"
        }
