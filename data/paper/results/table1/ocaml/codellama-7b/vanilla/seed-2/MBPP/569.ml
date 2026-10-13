let rec sort_sublists (list1 : string list list) : string list list =
    match list1 with
        | [] -> []
        | (h::t) ->
            let sorted_sublist = List.sort compare h in
            sorted_sublist :: sort_sublists t

and compare (l1 : string) (l2 : string) : int =
    Pervasives.compare l1 l2 in

let _ = sort_sublists [[]; ["apple"; "banana"; "cherry"]; ["cinnamon"; "dried peel"]] in


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort each sublist of strings in a given list of lists. *)
