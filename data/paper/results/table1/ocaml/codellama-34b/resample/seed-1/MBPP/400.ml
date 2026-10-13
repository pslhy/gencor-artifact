(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to extract the number of unique tuples in the given list. *)
let rec extract_freq (test_list :  (int * int) list) : int =
    let rec aux (acc : (int * int) list) (lst : (int * int) list) : int =
        match lst with
        | [] -> acc
        | (x, y) :: rest ->
            if List.mem_fst acc x then
                (x, y) :: rest
            else
                aux (x, y) rest in
    List.fold_left (fun (acc, curr, count) (x, y) ->
        if List.mem_fst curr x then
            (acc, (x, y) :: rest, count)
        else
            (x, y) :: rest, count + 1)

