let rec odd_length_sum (arr : int list) : int = 
  let rec sum_sublists (lst : int list) (start : int) (acc : int) : int = 
    if start >= List.length lst then acc
    else 
      let rec take n lst = 
        if n = 0 then [] else match lst with h::t -> h :: take (n-1) t | [] -> [] 
      in
      let rec odd_length_sublists lst n acc = 
        if n > List.length lst then acc
        else 
          let sublist = take n lst in
          if List.length sublist mod 2 <> 0 then 
            odd_length_sublists lst (n+1) (acc + List.fold_left (+) 0 sublist)
          else odd_length_sublists lst (n+1) acc
      in
      sum_sublists lst (start+1) (odd_length_sublists lst 1 0)
  in
  sum_sublists arr 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd length sublists. https://www.geeksforgeeks.org/sum-of-all-odd-length-sublists/ *)
