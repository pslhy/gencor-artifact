let rec check_value (dict : (string * int) list) (n : int) : bool =
  match dict with
  | [] -> true
  | (k, v) :: tail -> if n = v then check_value tail v else false

let () =
  Printf.printf "Expected: true\n"
  Printf.printf "Actual: %b\n" (check_value [("a", 1); ("b", 1); ("c", 1)] 1);

  Printf.printf "Expected: false\n"
  Printf.printf "Actual: %b\n" (check_value [("a", 1); ("b", 2); ("c", 1)] 1);


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if all values are same in an association list. *)
