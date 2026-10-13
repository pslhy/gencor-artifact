let rec is_nonagonal (n : int) : int =
    let rec aux x y =
        if x = 1 then y
        else if y = 0 then 0
        else aux (x-1) (y+9)
    in aux n 1

let find_nth (n : int) : int =
    let rec aux x =
        if is_nonagonal x = n then x
        else aux (x+1)
    in aux 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth nonagonal number. *)
