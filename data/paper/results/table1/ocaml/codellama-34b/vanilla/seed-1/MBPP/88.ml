let rec freq_count (list1 : int list) : (int * int) list =
    let rec aux (list2 : int list) (acc : (int * int) list) : (int * int) list =
        match list2 with
        | [] -> acc
        | x::xs ->
            let count = List.length (List.filter (fun y -> y = x) list2) in
            aux xs (acc@[(x, count)])
    in
    aux list1 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get the frequency of all the elements in a list, returned as an association list. *)
