let rec fruit_distribution (s : string) (n : int) : int = 
    let count_positions char string = 
        let rec loop count i = 
            if i >= String.length string then count 
            else if string.[i] = char then loop (count + 1) (i + 1) 
            else loop count (i + 1) 
        in loop 0 0 in 
    let apples = count_positions 'a' s in 
    let oranges = count_positions 'o' s in 
    n - (apples + oranges)

let () =
    Printf.printf "%d\n" (fruit_distribution "5 apples and 6 oranges" 19); (* 8 *)
    Printf.printf "%d\n" (fruit_distribution "0 apples and 1 oranges" 3); (* 2 *)
    Printf.printf "%d\n" (fruit_distribution "2 apples and 3 oranges" 100); (* 95 *)
    Printf.printf "%d\n" (fruit_distribution "100 apples and 1 oranges" 120); (* 19 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     In this task, you will be given a string that represents a number of apples and oranges *)
(*     that are distributed in a basket of fruit this basket contains *)
(*     apples, oranges, and mango fruits. Given the string that represents the total number of *)
(*     the oranges and apples and an integer that represent the total number of the fruits *)
(*     in the basket return the number of the mango fruits in the basket. *)
(*     for examble: *)
(*     >>> fruit_distribution "5 apples and 6 oranges" 19 *)
(*     8 *)
(*     >>> fruit_distribution "0 apples and 1 oranges" 3 *)
(*     2 *)
(*     >>> fruit_distribution "2 apples and 3 oranges" 100 *)
(*     95 *)
(*     >>> fruit_distribution "100 apples and 1 oranges" 120 *)
(*     19 *)
