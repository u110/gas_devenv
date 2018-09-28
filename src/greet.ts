import { Person } from "./person";


export function say(person: Person) {
    return `Hello, ${person.firstName} ${person.lastName}.`;
}
