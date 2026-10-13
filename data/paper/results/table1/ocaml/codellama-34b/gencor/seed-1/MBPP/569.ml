
let rec sort_sublists (list1 : string list list) : string list list =
    let rec aux (list2 : string list) : string list =
        match list2 with
        | [] -> []
        | [x] -> [x]
        | x1::x2::xs ->
            let sorted = sort_sublists xs in
            if x1 < x2 then
                x1::sorted
            else
                x2::sorted
    in
    List.map (fun x -> aux x) list1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort each sublist of strings in a given list of lists. *)
