let rec comb_sort (nums : int list) : int list = 
  let gap = max 1 (List.length nums / 1.28) in
  let swapped = ref false in
  let rec compare_and_swap lst pos gap = 
    match lst with
    | [] | [_] -> lst
    | h1::h2::t -> 
      if h1 > h2 then 
        let lst = List.remove h1 lst in
        let lst = List.insert h2 lst in
        swapped := true;
        compare_and_swap lst (pos + 1) gap
      else compare_and_swap (h2::h1::t) (pos + 1) gap
  in
  let rec sort lst gap =
    if gap = 1 && not !swapped then lst else
    begin
      swapped := false;
      compare_and_swap lst 0 gap;
      sort lst (int gap -. 1)
    end 
  in sort nums gap


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
