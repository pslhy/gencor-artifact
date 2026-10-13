let rec frequency_lists (list1 : int list list) : (int * int) list =
    let rec aux (list2 : int list) (acc : (int * int) list) : (int * int) list =
        match list2 with
        | [] -> acc
        | hd :: tl ->
            let freq = List.filter (fun x -> x = hd) list2 |> List.length in
            let new_acc = (hd, freq) :: acc in
            aux tl new_acc
    in
    aux (List.flatten list1) []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
