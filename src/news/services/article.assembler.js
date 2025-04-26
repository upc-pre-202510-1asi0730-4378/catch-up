import {Article} from "../model/article.entity.js";
import {SourceAssembler} from "./source.assembler.js";

export class ArticleAssembler {
    static source = null;
    
    static withSource(source) {
        this.source = source;
        return this;
    }
    
    static toEntityFromResource(resource) {
        let article = new Article({...resource});
        article.source = this.source && this.source.id === resource.source.id 
            ? this.source 
            : SourceAssembler.ToEntityFromResource(resource.source);
        return article;
    }
}