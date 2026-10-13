let rec odd_Equivalent (s : string) (n : int) : int =
    if n <= 0 then
        0
    else if s = "1" then
        1 + odd_Equivalent "1" (n - 1)
    else if s = "0" then
        odd_Equivalent "0" (n - 1)
    else
        let len = String.length s in
        let s' = String.copy s in
        for i = 0 to len - 2 do
            s'.[i] <- s.[i + 1]
        done;
        s'.[len - 1] <- s.[0];
        let count = ref 0 in
        for i = 0 to len - 1 do
            if s'.[i] = '1' then incr count
        done;
        !count + odd_Equivalent s (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
