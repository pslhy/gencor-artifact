let rec first_odd (nums : int list) : int =
  match nums with
  | [] -> raise Not_found
  | h::t -> if h mod 2 = 1 then h else first_odd t

(* Test *)
let l = [2; 4; 6; 8; 10]
let () = first_odd l (* Expected: exception Not_found *)

let l = [2; 3; 4; 6; 8; 10]
let () = assert (first_odd l = 3) (* Expected: 3 *)

let l = [3; 4; 6; 8; 10]
let () = assert (first_odd l = 3) (* Expected: 3 *)

let l = [2; 4; 6; 8; 1; 3]
let () = assert (first_odd l = 1) (* Expected: 1 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first odd number in a given list of numbers. *)
