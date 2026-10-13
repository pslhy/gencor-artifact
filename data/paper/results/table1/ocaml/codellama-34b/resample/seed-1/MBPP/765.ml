(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
let rec is_polite (n : int) : int =
    let str = string_of_int n in
    let len = String.length str in
    let rec sub_polite (i : int) (count : int) =
        if i >= len then
            count
        else if (int_of_string (String.get str i)) <= (int_of_string (String.get str (i + 1))) then
            sub_polite (i + 1) (count + 1)
        else
            count
    in
    sub_polite 0 0

let nth_polite (n : int) : int =
    let rec aux (i : int) (count : int) =
        if count = n then
            i
        else
            aux (i + 1) (is_polite (i + 1))
    in
    aux 1 (is_polite 1)


