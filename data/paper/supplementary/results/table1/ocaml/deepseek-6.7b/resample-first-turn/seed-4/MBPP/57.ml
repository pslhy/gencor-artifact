let rec find_Max_Num (arr : int list) : int =
  let rec aux xList acc =
    match xList with
    | [] -> acc
    | h::t -> aux (List.filter (fun x -> x != h) t) ((acc*10)+h)
  in List.max (List.map (fun x -> aux x 0) arr)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest number that can be formed with the given list of digits. *)
