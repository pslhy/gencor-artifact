(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
let rec odd_Equivalent (s : string) (n : int) : int =
    let s' = String.sub s 1 (String.length s - 1) ^ String.make 1 (if n mod 2 = 0 then '1' else '0') in
    if s = s' then 1 else odd_Equivalent s' n + (if n mod 2 = 0 then 0 else 1)

let rotate_string (s : string) =
    let rec helper (acc : string) (s : string) : string =
        if s = "" then acc
        else if String.length s > 0 then helper (s.[0] ^ acc) (String.sub s 1 (String.length s - 1))
        else s
    in helper "" s

let odd_repeat (s : string) (n : int) : int =
    let rec helper (i : int) (s : string) (acc : int) : int =
        if i < n then helper (i + 1) (rotate_string s) acc else acc + (if n mod 2 = 0 then 0 else 1)
    in helper 0 s 0

