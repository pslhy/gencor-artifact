
let rec comb_sort (nums : int list) : int list = 
  let shrink_factor = 1.3 in
  let rec sort nums gap shrinked =
    if gap = 1 && not shrinked then nums
    else
      let (nums', shrinked') =
        let rec swap_and_check nums gap shrinked i =
          if i + gap >= List.length nums then (nums, shrinked)
          else
            let (a, b) = List.split-nums (i + gap)
            in if a.(0) > b.(0) then swap_and_check (List.concat [a; [b.(0)]; [a.(0)]; List.tl b] gap shrinked true)
               else swap_and_check nums gap shrinked (i + 1)
        in swap_and_check nums gap shrinked 0
      in sort nums' (if gap = 1 then 1 else int_of_float (floor (float gap /. shrink_factor))) (gap <> 1 || shrinked')
  in sort nums (List.length nums) false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
