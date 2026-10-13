
let rec find_star_num (n : int) : int =
    if n <= 1 then
        n
    else
        let (star_num, _) = find_star_num (n - 1)
        in star_num + 1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n'th star number. *)
