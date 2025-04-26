import axios from 'axios';

const newsApiUrl = import.meta.env.VITE_NEWS_API_URL;
const apiKey = import.meta.env.VITE_NEWS_API_KEY;
const sourcesEndpoint = import.meta.env.VITE_SOURCES_ENDPOINT;
const topHeadlinesEndpoint = import.meta.env.VITE_TOP_HEADLINES_ENDPOINT;

const http = axios.create({
    baseURL: newsApiUrl,
    params: { apiKey: apiKey },
});

export class NewsApiService {
    getSources() {
        return http.get(`${sourcesEndpoint}`);
    }
    
    getArticlesForSourceId(sourceId) {
        return http.get(`${topHeadlinesEndpoint}`, {params: {sources: sourceId}});
    }
}