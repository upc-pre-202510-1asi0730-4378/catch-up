workspace "CatchUp News Application (Vue Edition)" {
    model {
        user = person "User" "An individual browsing and exploring news sources and articles from various news sources"
        catchup = softwareSystem "CatchUp" "A web-based platform for aggregating and displaying news articles and sources from external APIs" {
            webApp = container "CatchUp Web App" "Serves static assets to the user's browser to initialize the news application" {
                technology "Nginx"
            }
            spa = container "CatchUp Single Page Application" "Handles dynamic rendering of news sources and articles, providing an interactive user experience in the browser" "" "SPA" {
                technology "Vue 3.5.13 PrimeVue 4.3.3 PrimeIcons 7.0.0 PrimeFlex 4.0.0 Axios 1.8.4 Vue-i18n 10.0.7"
                appComponent = component "AppComponent" "Orchestrates the application's layout and coordinates rendering of UI components" {
                    technology "Vue, JavaScript"
                }
                articleList = component "ArticleListComponent" "Presents a collection of news articles from a source in a list format" {
                    technology "Vue, JavaScript"
                }
                articleItem = component "ArticleItemComponent" "Displays individual article details in a card format with title, image, and source information" {
                    technology "Vue, JavaScript"
                }
                sourceList = component "SourceListComponent" "Presents a selectable list of news sources" {
                    technology "Vue, JavaScript"
                }
                sourceItem = component "SourceItemComponent" "Displays an individual source avatar and name" {
                    technology "Vue, JavaScript"
                }
                footerContent = component "FooterContentComponent" "Renders attribution details for external APIs used in the application" {
                    technology "Vue, JavaScript"
                }
                languageSwitcher = component "LanguageSwitcherComponent" "Allows users to select their preferred language for the application" {
                    technology "Vue, JavaScript"
                }
                unavailableContent = component "UnavailableContentComponent" "Displays a message when the application is unable to fetch data from external APIs" {
                    technology "Vue, JavaScript"
                }
                newsApiService = component "NewsApiService" "Retrieves news sources and articles from an external news provider API" {
                    technology "JavaScript"
                }
                logoApiService = component "LogoApiService" "Fetches logo images for news sources from an external logo provider API" {
                    technology "JavaScript"
                }
                articleAssembler = component "ArticleAssembler" "Transforms raw article data into a structured format for display" {
                    technology "JavaScript"
                }
                sourceAssembler = component "SourceAssembler" "Converts raw source data into a structured format with associated logos" {
                    technology "JavaScript"
                }
            }
        }

        newsApi = softwareSystem "NewsAPI.org" "Provides news articles and source metadata from global publishers" "External"
        clearbit = softwareSystem "Clearbit Logo API" "Supplies logo images for news sources based on their domain names" "External"

        user -> webApp "Requests static content" "HTTPS"
        webApp -> spa "Delivers Angular app (HTML, CSS, JS)" "HTTPS"
        user -> spa "Interacts with app" "Browser"
        appComponent -> languageSwitcher "Renders language options"
        appComponent -> sourceList "Renders sources"
        appComponent -> articleList "Renders articles"
        appComponent -> footerContent "Displays attributions"
        appComponent -> newsApiService "Fetches sources and articles by source id" "HTTPS"
        appComponent -> unavailableContent "Displays error message"
        appComponent -> articleAssembler "Converts articles"
        appComponent -> sourceAssembler "Converts sources"
        articleAssembler -> sourceAssembler "Converts sources"
        sourceList -> sourceItem "Renders sources"
        articleList -> articleItem "Renders articles"
        newsApiService -> newsApi "Fetches sources and articles" "HTTPS"
        sourceAssembler -> logoApiService "Gets logo URLs"
        logoApiService -> clearbit "Fetches logos" "HTTPS"
    }

    views {
        systemContext catchup "SystemContext" {
            include *
            autoLayout
        }
        container catchup "Containers" {
            include *
            autoLayout
        }

        component spa "Components" {
            include *
            autoLayout
        }

        styles {
            element "Person" {
                shape Person
            }
            element "SPA" {
                shape WebBrowser
                background gray
                color white
            }
        }
    }
}