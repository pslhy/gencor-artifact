
let rec pancake_sort (nums : int list) : int list =
    let rec flip n =
        let rec loop i x =
            if i = n then x
            else loop (i+1) (x / n)
        in loop 0
    in
    
    let rec loop (i, x) =
        if i >= nums then x
        else loop (i+1, flip nums.(i) x)
    in
    loop (1, [])

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
