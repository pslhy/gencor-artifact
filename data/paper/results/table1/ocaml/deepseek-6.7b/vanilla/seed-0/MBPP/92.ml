let rec is_undulating (n : int) : bool =
    if n < 10 then false
    else
        let rec loop (n : int) (prev : int) (diff : int) : bool =
            if n = 0 then true
            else
                let last = n mod 10
                in if last - prev = diff then loop (n / 10) last (last - prev)
                   else false
        in loop (n / 10) (n mod 10) 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
