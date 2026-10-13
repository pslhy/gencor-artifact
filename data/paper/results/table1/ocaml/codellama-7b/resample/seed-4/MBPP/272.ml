(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in a list of tuples and returns a list containing the rear element of each tuple. *)
let rec rear_extract (test_list :  (int * string * int) list) : int list = 
    match test_list with
      head :: tail ->  (List.map (fun a -> fst a) head :: rear_extract tail) 
      [] -> []
end 

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:10: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rear_extract (test_list :  (int * string * int) list) : int list = 
List.map (fun a -> fst a) head:: rear_extract tail 
end

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rear_extract (test_list :  (int * string * int) list) : int list = 
  List.map (fun a -> fst a) head:: rear_extract tail 
end

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rear_extract (test_list :  (int * string * int) list) : int list = 
  List.map (fun a -> fst a) head:: rear_extract tail 
end

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rear_extract (test_list :  (int * string * int) list) : int list = 
  List.map fst head:: rear_extract tail 
end

