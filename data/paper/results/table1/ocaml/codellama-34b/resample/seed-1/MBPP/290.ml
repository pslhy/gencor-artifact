(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the list of maximum length in a list of lists. *)
let rec max_length (list1 : int list list) :  int * int list =
    let rec aux (list1 : int list list) (list2 : int * int) :  int * int list =
        match list1 with
        | [] -> list2
        | (head::tail) ->
            if List.length head > snd list2 then
                aux tail (List.length head, head)
            else
                aux tail list2
    in
    aux list1 (0, [])

