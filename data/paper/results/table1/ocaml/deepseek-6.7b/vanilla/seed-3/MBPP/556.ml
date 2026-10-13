let rec find_Odd_Pair (a : int list) (n : int) : int =
  match a with
  | [] -> n
  | x :: xs -> 
        let rec count_xor (b : int list) (n : int) : int =
          match b with
          | [] -> n
          | y :: ys -> 
                if (x land y) = 0 then count_xor ys (n+1)
                else count_xor ys n
        in count_xor xs n;;

find_Odd_Pair [1; 2; 3; 4] 0;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
