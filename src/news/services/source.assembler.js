import {LogoApiService} from "../../shared/services/logo-api.service.js";
import {Source} from "../model/source.entity.js";

const logoApiService = new LogoApiService();

export class SourceAssembler {
    static toEntityFromResource(resource) {
        let source = new Source({...resource});
        source.urlToLogo = logoApiService.getUrlToLogo(source);
        return source;
    }
    static toEntitiesFromResponse(response) {
        if (response.data.status !== "ok") {
            console.error(`${response.data.status} - ${response.data.code}: ${response.data.message}.`);
            return [];
        }
        const sourcesResponse = response.data;
        return sourcesResponse.sources.map(source => { return this.toEntityFromResource(source);});
    }
}