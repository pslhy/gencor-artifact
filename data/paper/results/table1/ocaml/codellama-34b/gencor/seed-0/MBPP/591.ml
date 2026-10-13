
let rec swap_List (newList : int list) : int list =
    match newList with
    | [] -> []
    | h :: t -> swap_List (t @ [h])

let interchange_first_last (lst : int list) : int list =
   let last = lst |> List.length in
   let first = lst |> List.hd in
   [first] @ (lst |> List.tl |> List.rev) @ [last]
  
(**
OutputStream(ocamlclean)
val interchange_first_last : int List.t -> int List.t = <fun>
**)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to interchange the first and last elements in a list. *)
