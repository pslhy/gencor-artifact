
let rec int_to_mini_roman (number : int) : string = 
    let rec loop n (acc : string) = 
        if n <= 0 then acc else
        let c residual =
            if n >= 1000 then ('m', n - 1000)
            else if n >= 900 then ('c', n - 900)
            else if n >= 500 then ('d', n - 500)
            else if n >= 400 then ('c', n - 400)
            else if n >= 100 then ('c', n - 100)
            else if n >= 90 then ('x', n - 90)
            else if n >= 50 then ('l', n - 50)
            else if n >= 40 then ('x', n - 40)
            else if n >= 10 then ('x', n - 10)
            else if n = 9 then ('i', n - 9)
            else if n >= 5 then ('v', n - 5)
            else if n = 4 then ('i', n - 4)
            else ('i', n - 1) in
        let (char, new_n) = c n in
        loop new_n (acc ^ (String.make 1 char)) in
    loop number ""

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer, obtain its roman numeral equivalent as a string, *)
(*     and return it in lowercase. *)
(*     Restrictions: 1 <= num <= 1000 *)
(*     Examples: *)
(*     >>> int_to_mini_roman 19 *)
(*     "xix" *)
(*     >>> int_to_mini_roman 152 *)
(*     "clii" *)
(*     >>> int_to_mini_roman 426 *)
(*     "cdxxvi" *)
