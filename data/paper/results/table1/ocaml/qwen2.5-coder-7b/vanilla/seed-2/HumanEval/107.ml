let rec even_odd_palindrome (n : int) :  int * int = 
    let is_palindrome (x : int) : bool =
        let s = string_of_int x in
        s = String.rev s
    in
    let rec count (acc_even : int) (acc_odd : int) (i : int) : int * int =
        if i > n then (acc_even, acc_odd)
        else
            if is_palindrome i then
                if i mod 2 = 0 then count (acc_even + 1) acc_odd (i + 1)
                else count acc_even (acc_odd + 1) (i + 1)
            else count acc_even acc_odd (i + 1)
    in
    count 0 0 1

(* Example usage *)
let result1 = even_odd_palindrome 3 (* Should print (1, 2) *)
let result2 = even_odd_palindrome 12 (* Should print (4, 6) *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return a tuple that has the number of even and odd *)
(*     integer palindromes that fall within the range(1, n), inclusive. *)
(*     Example 1: *)
(*     >>> even_odd_palindrome 3 *)
(*     (1, 2) *)
(*     Explanation: *)
(*     Integer palindrome are 1, 2, 3. one of them is even, and two of them are odd. *)
(*     Example 2: *)
(*     >>> even_odd_palindrome 12 *)
(*     (4, 6) *)
(*     Explanation: *)
(*     Integer palindrome are 1, 2, 3, 4, 5, 6, 7, 8, 9, 11. four of them are even, and 6 of them are odd. *)
(*     Note: *)
(*     1. 1 <= n <= 10^3 *)
(*     2. returned tuple has the number of even and odd integer palindromes respectively. *)
