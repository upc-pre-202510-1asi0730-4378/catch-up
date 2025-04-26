import {Source} from "./source.entity.js";

export class Article {
    constructor({
                    title = '',
                    author = '',
                    description = '',
                    url = '',
                    urlToImage = '',
                    publishedAt = '',
                    source = null
                }) {
        this.title = title;
        this.author = author;
        this.description = description;
        this.url = url;
        this.urlToImage = urlToImage;
        this.publishedAt = new Date(publishedAt);
        this.source = source ? new Source(source) : null;
    }
    
    getFormattedPublishedAt() {
        return this.publishedAt.toLocaleDateString('en-US', {
            year: 'numeric',
            month: '2-digit',
            day: '2-digit',
            hour: '2-digit',
            minute: '2-digit',
        });
    }
}