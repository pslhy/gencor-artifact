let rec is_Sum_Of_Powers_Of_Two (n : int) : bool =
    (* base case: n is 0 which can be represented as sum of non-zero powers of 2 *)
    if n = 0 then
        true
    (* base case: n is negative which cannot be represented as sum of non-zero powers of 2 *)
    else if n < 0 then
        false
    (* recursive case: n is positive, check if n can be represented as sum of non-zero powers of 2 *)
    else
        (* check if n can be represented as sum of powers of 2 which can be written as (2^i + 2^j) *)
        (* start with the largest power and check if it is smaller than n *)
        let i = 0 in
        let j = 0 in
        while i <= n do
            if (n - (2 ** i)) mod 2 = 0 then
                (* if (2^i + 2^j) is smaller than n, check if (n - 2^i) can be represented as sum of non-zero powers of 2 *)
                is_Sum_Of_Powers_Of_Two (n - (2 ** i))
            else
                (* if (2^i + 2^j) is larger than n, check if (n - 2^j) can be represented as sum of non-zero powers of 2 *)
                is_Sum_Of_Powers_Of_Two (n - (2 ** j))
        done


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given number can be represented as sum of non-zero powers of 2 or not. *)
