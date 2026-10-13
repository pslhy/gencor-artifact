(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the length of the longest word. *)
let rec len_log (list1 : string list) : int =
    match list1 with
        | [] -> 0
        | h::t -> h

let find_longest_word (list2 : string list) : string option =
    List.fold_left (fun st ele -> if st > len_log ele then st else len_log ele) 0 list2
    |> fun st ->
        match List.find_opt (fun x -> len_log x = st) list2 with
            | Some x -> Some x
            | None -> None


