let rec odd_Equivalent (s : string) (n : int) : int = 
    let count_odd_chars (s : string) : int = 
        let rec aux (i : int) (count : int) : int = 
            if i = String.length s then count
            else 
                if s.[i] = '1' then aux (i + 1) (count + 1)
                else aux (i + 1) count
        in aux 0 0
    in 
    let rotate_right (s : string) : string = 
        let last_char = String.get s (String.length s - 1) in
        String.sub s 0 (String.length s - 1) ^ String.make 1 last_char
    in
    let rec aux (n : int) (count : int) : int = 
        if n = 0 then count
        else 
            let new_s = rotate_right s in
            if (count_odd_chars new_s) mod 2 <> 0 then aux (n - 1) (count + 1)
            else aux (n - 1) count
    in aux n 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
