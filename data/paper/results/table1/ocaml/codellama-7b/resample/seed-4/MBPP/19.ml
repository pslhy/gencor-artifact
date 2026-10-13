(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find whether a given list of integers contains any duplicate element. *)
let rec test_duplicate (arraynums : int list) : bool = 
    match arraynums with
      head :: tail -> 
          (match tail with
              head2 :: tail2 -> 
                if head = head2 then true else false
                  else test_duplicate tail2 
          )
      [] -> false
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:19: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec test_duplicate (arraynums : int list) : bool = 
    match arraynums with
      head :: tail -> 
          (match tail with
              head2 :: tail2 -> 
                if head = head2 then true else false
                  else test_duplicate tail2 
          )
      [] -> false
;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:19: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec test_duplicate (arraynums : int list) : bool = 
    match arraynums with
      head :: tail -> 
          (match tail with
              head2 :: tail2 -> 
                if head = head2 then true
                else test_duplicate tail2 
          )
      [] -> false
;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:10: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec test_duplicate (arraynums : int list) : bool = 
    match arraynums with
      head :: tail -> 
          (match tail with
              head2 :: tail2 -> 
                if head = head2 then true
                else test_duplicate tail2 
          )
      [] -> false
;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:10: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec test_duplicate (arraynums : int list) : bool = 
    match arraynums with
        | head :: tail -> 
          (match tail with
              | head2 :: tail2 -> 
                  if head = head2 then true
                  else test_duplicate tail2 
              | _ -> false
          )
        | _ -> false
;;

