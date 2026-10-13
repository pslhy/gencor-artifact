
let rec pancake_sort (nums : int list) : int list =
  let rec flip k =
    let rec rev_range i j =
      if i >= j then []
      else if i = 0 then nums.(!j) :: rev_range (i + 1) (j - 1)
      else nums.(i) :: rev_range (i + 1) (j - 1)
    in
    let rec swap i j =
      let temp = nums.(i) in
      nums.(i) <- nums.(j);
      nums.(j) <- temp
    in
    for i = 0 to ((k - 1) / 2) do
      swap i (k - i - 1)
    done;
    rev_range 0 (k - 1)
  in
  let len = List.length nums in
  for i = len downto 0 do
    let max_idx =
      let rec loop j m_idx m_val =
        if j = i then m_idx
        else if nums.(j) > m_val then loop (j + 1) j nums.(j)
        else loop (j + 1) m_idx m_val
      in
      loop 0 0 nums.(0)
    in
    if max_idx <> i then (
      if max_idx <> 0 then flip max_idx;
      flip i
    )
  done;
  Array.to_list nums

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
