let rec search (arr : int list) : int =
  match arr with
  |[] -> failwith "No single element"
  |[x] -> x
  |x :: (y :: _ as rest) -> if x = y then search rest else x

let test_list = [1; 1; 2; 2; 3; 4; 4; 5; 5]

(* Test the function *)
let result = search test_list

(* Print the result *)
print_int result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the element that appears only once in a sorted list. *)
