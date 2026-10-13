let rec is_octagonal (n : int) : int =
    if n = 1 then 1
    else if n = 2 then 3
    else if n = 3 then 5
    else if n = 4 then 7
    else if n = 5 then 9
    else if n = 6 then 11
    else if n = 7 then 13
    else if n = 8 then 15
    else raise (Failure "Octagonal number not found")

let nth_octagonal (n : int) : int =
    let rec loop (i : int) (count : int) =
        if count = n then i
        else loop (8 * i + 3) (count + 1)
    in
    loop 1 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth octagonal number. *)
