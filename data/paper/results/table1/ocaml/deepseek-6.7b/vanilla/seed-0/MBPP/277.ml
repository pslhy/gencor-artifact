let rec dict_filter (dict : (string * int) list) (n : int) : (string * int) list =
    match dict with
    | [] -> []
    | (key, value) :: tl ->
        if value >= n then
            (key, value) :: dict_filter tl n
        else
            dict_filter tl n

(* Test Cases *)
let test_dict = [("apple", 10); ("banana", 5); ("cherry", 15); ("date", 16); ("elderberry", 20)]
let n = 15
let result = dict_filter test_dict n

let _ = assert (result = [("cherry", 15); ("date", 16); ("elderberry", 20)])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in an association list and integer n and filters the association list to only include entries with values greater than or equal to n. *)
