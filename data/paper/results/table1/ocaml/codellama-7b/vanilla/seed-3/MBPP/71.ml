let rec comb_sort (nums : int list) : int list =
  let d = ref 1 in
  let gap = ref (length nums / 1.25) in
  let swapped = ref false in
  let rec comb () =
    if !gap > 1 || !swapped then begin
      swapped := false;
      let rec compare v1 v2 =
        if v1 = v2 then 0
        else if v1 > v2 then 1
        else -1
      in
      let sorted = List.sort ~compare nums in
      let rec swap i j : int list =
        if i = j+1 then nums
        else if compare (List.nth nums i) (List.nth nums j) = 1 then begin
          List.append (List.sub nums 0 i) ((List.nth nums i) :: (List.sub nums (j+1) (List.length nums - j)))
        end else swap (i+1) (j+1)
      in
      let rec combine l1 l2 =
        match (l1, l2) with
        | (h1 :: t1, h2 :: t2) -> (h1, h2) :: combine t1 t2
        | (_, _) -> []
      in
      let rec move last seen =
        if last = -1 then seen
        else move (combine (List.nth nums last) seen) (last - 1)
      in
      let rec move_down (i : int) : int list =
        if i = !gap then combined
        else if i = List.length nums then nums
        else begin
          let previ = i - !gap in
          let last = 0 in
          let cur = List.nth nums i in
          let seen = List.append (List.sub nums 0 i) ((List.nth nums i) :: (List.sub nums (i+1) !gap)) in
          let combined = move last seen in
          List.append (move_down (i - 1)) [cur]
        end
      in
      let combined = move_down (List.length nums) in
      nums <- combined;
      if !swapped then begin
        swapped := false;
        gap := !gap * 1.25;
        comb ()
      end
    end
  in
  comb ();
  nums


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
