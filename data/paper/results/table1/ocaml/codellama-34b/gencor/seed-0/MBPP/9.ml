
let rec find_Rotations (str : string) : int =
    if str = "" then raise (Invalid_argument "str")
    else 
        let n = String.length str in
        if n = 1 then n
        else 
            let rec loop i =
                if i < n-1 then (if str.[i] = str.[i+1] then 1 + loop (i+1) else 0)
            in loop 0;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
