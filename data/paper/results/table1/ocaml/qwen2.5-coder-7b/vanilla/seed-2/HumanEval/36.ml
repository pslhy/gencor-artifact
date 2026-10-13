let rec fizz_buzz (n : int) : int = 
    let count_sevens (m : int) : int =
        let rec count (acc : int) (num : int) : int =
            if num = 0 then acc
            else count (if num mod 10 = 7 then acc + 1 else acc) (num / 10)
        in count 0 m
    in
    let range = List.init ((n - 1) / 11 + (n - 1) / 13 - (n - 1) / 143) (fun i -> 11 * i) @
                List.init ((n - 1) / 13 + (n - 1) / 11 - (n - 1) / 143) (fun i -> 13 * i) @
                List.init ((n - 1) / 143) (fun i -> 11 * 13 * i)
    in
    List.fold_left (fun acc x -> acc + count_sevens x) 0 range


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13. *)
(*     >>> fizz_buzz 50 *)
(*     0 *)
(*     >>> fizz_buzz 78 *)
(*     2 *)
(*     >>> fizz_buzz 79 *)
(*     3 *)
