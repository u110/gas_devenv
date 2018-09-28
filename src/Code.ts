import { say } from "./greet";
import { logger } from "./logger";


function myFunction() {
  let user = {firstName: "Joe", lastName: "Jordan"};
  logger(say(user));
}
