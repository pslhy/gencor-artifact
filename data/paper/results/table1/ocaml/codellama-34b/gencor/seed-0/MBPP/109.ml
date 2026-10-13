
let rec odd_Equivalent (s : string) (n : int) : int =
    if n = 0 then 0
    else if s = "" then 0
    else (
        let rotate = (n mod String.length s)
        odd_Equivalent (String.sub s 1 (String.length s - 1)) (n - 1)
    (* We count the number of odd values when rotating the binary string by 1 each time. *)
    in
        if s.[rotate] = '1' then 1
        else 0
    )

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
