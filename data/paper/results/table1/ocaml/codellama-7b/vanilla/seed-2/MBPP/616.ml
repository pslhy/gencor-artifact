let rec tuple_modulo (test_tup1 :  int * int * int * int) (test_tup2 :  int * int * int * int) :  int * int * int * int =
    match test_tup1, test_tup2 with
    | x, y when List.length x = List.length y -> List.map2 (fun x y -> x mod y) x y
    | _, _ -> failwith "Error: tuples are of different lengths"

(* Examples: *)
tuple_modulo (1, 2, 3, 4) (10, 20, 30, 40)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which takes two tuples of the same length and performs the element wise modulo. *)
