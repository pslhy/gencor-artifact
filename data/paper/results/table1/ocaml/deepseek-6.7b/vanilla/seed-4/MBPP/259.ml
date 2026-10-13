let rec maximize_elements (test_tup1 : int list list) (test_tup2 : int list list) : int list list =
  let rec aux xList yList acc =
    match (xList, yList) with
    | ([], []) -> acc
    | (x::xs, y::ys) when x>y -> aux xs ys (x::acc)
    | (x::xs, y::ys) when x<y -> aux xs ys (y::acc)
    | (x::xs, y::ys) when x=y -> aux xs ys (x::acc)
    | _ -> acc
  in List.rev (aux (List.hd test_tup1) (List.hd test_tup2) [])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to maximize the given two lists. *)
