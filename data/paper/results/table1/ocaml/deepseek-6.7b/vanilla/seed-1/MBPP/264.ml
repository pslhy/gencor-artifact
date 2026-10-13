let rec dog_age (h_age : int) : int =
  match h_age with
  | 0 | 1 -> h_age * 15
  | _ -> (h_age - 1) * 7 + 15

(* Test Cases *)

(* a test case for 0 human year is 0 *)
let _ = assert (dog_age 0 = 0)
(* a test case for 1 human year is 15 *)
let _ = assert(dog_age 1 = 15)
(* a test case for 2 human years is 24 *)
let _ = assert(dog_age 2 = 24)
(* a test case for 3 human years is 28 *)
let _ = assert(dog_age 3 = 28)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate a dog's age in dog's years. *)
