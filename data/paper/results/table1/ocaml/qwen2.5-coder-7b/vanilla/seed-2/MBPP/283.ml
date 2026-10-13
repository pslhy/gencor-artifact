let rec validate (n : int) : bool = 
    let count_digits n digit =
        let rec helper num count =
            match num with
            | 0 -> count
            | _ ->
                let d = num mod 10 in
                if d = digit then helper (num / 10) (count + 1)
                else helper (num / 10) count
        in helper n 0
    in
    let rec check_freq num =
        if num = 0 then true
        else
            let d = num mod 10 in
            if d = 0 || count_digits n d > d then false
            else check_freq (num / 10)
    in check_freq (abs n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself. *)
