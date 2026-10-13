let rec reverse_Array_Upto_K (input : int list) (k : int) : int list = 
  let rec reverse acc lst =
    match lst with
    | [] -> acc
    | x::xs when k > 0 -> reverse (x::acc) xs
    | _ -> acc
  in
  let reversed_part = reverse [] (List.take input k) in
  let rest = List.drop input k in
  List.append reversed_part rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
