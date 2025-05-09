# User Stories for CatchUp

## US001: Browse News Sources
**As a** User, **I want to** browse available news sources, **so that** I can choose a source to access its articles.
- **Given** the User accesses the CatchUp application, **when** the news sources are retrieved from the provider, **then** the User can access the available news sources, including their names, and the first source is chosen by default.
- **Given** the User is browsing news sources, **when** the User chooses a different source, **then** the chosen source is indicated as active.

## US002: View Articles
**As a** User, **I want to** access articles from a chosen source, **so that** I can read news content.
- **Given** the User accesses the CatchUp application, **when** the news sources are retrieved and the first source is chosen, **then** the User can access articles for the first source, including their titles and summaries.
- **Given** the User chooses a different source, **when** the articles for that source are retrieved, **then** the User can access articles for the chosen source, including their titles and summaries.

## US003: Engage with Ethical and Inclusive Features
**As a** User, **I want to** engage with features that promote inclusivity and transparency, **so that** I can interact with the application in my preferred language and understand its data sources.
- **Given** the User is using the CatchUp application, **when** the User chooses a language (English or Spanish), **then** the User experiences the application in the chosen language.
- **Given** the User accesses the CatchUp application, **when** the User seeks attribution information, **then** the User is presented with attributions for NewsAPI.org and Clearbit Logo API.

## US004: Interact with Articles
**As a** User, **I want to** share articles or access their original source, **so that** I can distribute news or read the full content.
- **Given** the User accesses an article, **when** the User initiates sharing the article, **then** the User can share the article’s title and URL via a sharing mechanism if supported.
- **Given** the User initiates sharing and the sharing mechanism is not supported, **when** the User opts to copy the article’s URL, **then** the article’s URL is copied for sharing.
- **Given** the User completes sharing or copying the article, **when** the action is finalized, **then** the User receives confirmation of the action.
- **Given** the User accesses an article, **when** the User chooses to visit the article’s original source, **then** the User is directed to the article’s original URL.