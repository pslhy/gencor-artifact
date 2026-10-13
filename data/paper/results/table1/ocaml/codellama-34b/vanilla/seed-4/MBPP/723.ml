let rec count_same_pair (nums1 : int list) (nums2 : int list) : int = 
    (* base case: both lists are empty *)
    if (List.length nums1 = 0) || (List.length nums2 = 0)
    (* return 0 *)
    0
    else 
        (* get the head of each list *)
        let (head1,tail1) = List.hd_tl nums1 in
        let (head2,tail2) = List.hd_tl nums2 in
        (* check if the heads are equal *)
        if head1 = head2
        (* increment the count by 1 and recurse on the tails *)
        then 1 + count_same_pair tail1 tail2
        (* return 0 *)
        0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     The input is defined as two lists of the same length. Write a function to count indices where the lists have the same values. *)
